let selectedTransactionType = 'ALL';
let allTransactions = [];
let currentPage = 1;
const rowsPerPage = 10;

window.initCashierRecentTransactions = function () {
    document.getElementById('cashierRenewalsBody').addEventListener('change', e => {
  if (!e.target.classList.contains('receipt-checkbox')) return;

  const all = document.querySelectorAll('#cashierRenewalsBody .receipt-checkbox');
  const checked = document.querySelectorAll('#cashierRenewalsBody .receipt-checkbox:checked');

  document.getElementById('receipt-checkbox').checked =
    all.length > 0 && all.length === checked.length;
});
    document.getElementById('prevPage').onclick = () => {
  if (currentPage > 1) {
    currentPage--;
    renderPaginatedRows();
  }
};

document.getElementById('nextPage').onclick = () => {
  const totalPages = Math.ceil(allTransactions.length / rowsPerPage);
  if (currentPage < totalPages) {
    currentPage++;
    renderPaginatedRows();
  }
};
    
document.getElementById('receipt-checkbox').addEventListener('change', function () {
  const checked = this.checked;

  // ONLY check visible rows (current page)
  document
    .querySelectorAll('#cashierRenewalsBody .receipt-checkbox')
    .forEach(cb => {
      cb.checked = checked;
    });
});

    const dropdown = document.getElementById('gearReceipts');
    const statusLabel = document.getElementById('statusLabel');
        dropdown.querySelector('.dropdown-toggle').onclick = (e) => {
        e.stopPropagation();
        dropdown.classList.toggle('open');
    };
        document.addEventListener('click', () => {
        dropdown.classList.remove('open');
    });
    dropdown.querySelectorAll('.dropdown-menu li').forEach(item => {
        item.onclick = (e) => {
            e.stopPropagation();
            selectedTransactionType = item.dataset.value;
            statusLabel.textContent = item.textContent;
            dropdown.classList.remove('open');

            dropdown.querySelectorAll('li').forEach(li =>
            li.classList.remove('active')
            );
            item.classList.add('active');
            loadRecentTransactions();   
        };
    });

    loadRecentTransactions();
}
async function loadRecentTransactions() {
  const tbody = document.getElementById('cashierRenewalsBody');
  tbody.innerHTML = `
    <tr>
      <td colspan="5" class="text-center text-muted">
        Loading recent transactions...
      </td>
    </tr>
  `;

  try {
    const res = await fetch('/api/registration/recent-transactions');
let data = await res.json();

// FILTER BY DROPDOWN
if (selectedTransactionType !== 'ALL') {
  data = data.filter(row => row.transaction_type === selectedTransactionType);
}

allTransactions = data;
currentPage = 1;
renderPaginatedRows();



document.getElementById('printSelectedReceipts').onclick = async () => {
  const checked = document.querySelectorAll('.receipt-checkbox:checked');

  if (!checked.length) {
    alert('Please select at least one transaction to print.');
    return;
  }

  let receiptsHTML = '';

  for (let checkbox of checked) {
    const row = checkbox.closest('tr');
    const type = row.dataset.type;
    const relatedId = row.dataset.related;

    const res = await fetch(
      `/api/registration/details?type=${type}&relatedId=${relatedId}`
    );
    const details = await res.json();

    let receiptHeaderDetailsHTML = '';
    let receiptExtraDetailsHTML = '';



    /* =============================
       TRANSACTION-SPECIFIC DETAILS
       ============================= */

    if (type === 'VESSEL_REGISTRATION' || type === 'VESSEL_RENEWAL') {
      receiptHeaderDetailsHTML = `
        <p><strong>Vessel No:</strong> ${details.vessel_no}</p>
        <p><strong>Vessel Name:</strong> ${details.vessel_name}</p>
        <p><strong>Owner:</strong> ${details.owner_name}</p>
        <p><strong>Address:</strong> ${details.owner_address}</p>
        <p><strong>Home Port:</strong> ${details.home_port}</p>
      `;

        receiptExtraDetailsHTML = `
        <div style="margin-top:10px;">
            <h4 style="text-align:center; margin-bottom:10px;">
            VESSEL SPECIFICATIONS
            </h4>
            ${renderField('Vessel Type', details.vessel_type)}
            ${renderField('Length', details.length)}
            ${renderField('Breadth', details.breadth)}
            ${renderField('Depth', details.depth)}
            ${renderField('Gross Tonnage', details.gross_tonnage)}
            ${renderField('Net Tonnage', details.net_tonnage)}

            ${
            details.vessel_type === 'Motorized'
                ? `
                ${renderField('Engine Make', details.engine_make)}
                ${renderField('Engine Serial No.', details.engine_serial_number)}
                ${renderField('Engine HP', details.engine_horse_power)}
                ${renderField('Engine Cylinders', details.engine_cylinders)}
                `
                : ''
            }
        </div>
        `;
    }

    if (type === 'GEAR_REGISTRATION') {
      receiptHeaderDetailsHTML = `
        <p><strong>Gear No:</strong> ${details.gear_no}</p>
        <p><strong>Owner:</strong> ${details.owner_name}</p>
        <p><strong>Address:</strong> ${details.owner_address}</p>
      `;
    
      receiptExtraDetailsHTML = `
        <div style="margin-top:10px;">
        <h4 style="text-align:center; margin-bottom:10px;">
        GEARS SPECIFICATIONS
        </h4>
        ${renderField('Hand Instruments', details.hand_instruments)}
        ${renderField('Hook & Lines', details.line_type)}
        ${renderField('Nets', details.nets)}
        ${renderField('Palubog Nets', details.palubog_nets)}
        ${renderField('Bobo(Small)', details.bobo_small_qty)}
        ${renderField('Bobo(Large)', details.bobo_large_qty)}
        ${renderField('Tambuan(small)', details.tambuan_qty)}
        </div>
      `;

    }

    if (type === 'GEAR_RENEWAL') {
      receiptHeaderDetailsHTML = `
        <p><strong>Gear No:</strong> ${details.gear_no}</p>
        <p><strong>Owner:</strong> ${details.owner_name}</p>
      `;

      receiptExtraDetailsHTML = `
        <div style="margin-top:10px;">
        <h4 style="text-align:center; margin-bottom:10px;">
        GEARS SPECIFICATIONS
        </h4>
        ${renderField('Hand Instruments', details.hand_instruments)}
        ${renderField('Hook & Lines', details.line_type)}
        ${renderField('Nets', details.nets)}
        ${renderField('Palubog Nets', details.palubog_nets)}
        ${renderField('Bobo(Small)', details.bobo_small_qty)}
        ${renderField('Bobo(Large)', details.bobo_large_qty)}
        ${renderField('Tambuan(small)', details.tambuan_qty)}
        </div>
      `;
    }

    if (type === 'VESSEL_MODIFICATION') {
    receiptHeaderDetailsHTML = `
        <p><strong>Vessel No:</strong> ${details.vessel_no}</p>
        <p><strong>Vessel Name:</strong> ${details.vessel_name}</p>
        <p><strong>Owner:</strong> ${details.owner_name}</p>
        <p><strong>Address:</strong> ${details.owner_address}</p>
        <p><strong>Home Port:</strong> ${details.home_port}</p>
    `;

    receiptExtraDetailsHTML = `
    <div style="margin-top:10px;">
        <h4 style="text-align:center; margin-bottom:10px;">
        VESSEL SPECIFICATIONS
        </h4>

        ${renderField('New Length', details.new_length)}
        ${renderField('New Breadth', details.new_breadth)}
        ${renderField('New Depth', details.new_depth)}
        ${renderField('New Gross Tonnage', details.new_gross_tonnage)}
        ${renderField('New Net Tonnage', details.new_net_tonnage)}
        ${renderField('New Vessel Type', details.new_vessel_type)}
        ${renderField('Engine Make', details.new_engine_make)}
        ${renderField('Engine Serial No', details.new_engine_serial_number)}
        ${renderField('Horse Power', details.new_engine_horse_power)}
        ${renderField('Cylinders', details.new_engine_cylinders)}
    </div>
    `;

    }


    if (type === 'APPREHENSION_RELEASE') {
      receiptHeaderDetailsHTML = `
        <p><strong>Name:</strong> ${details.full_name}</p>
        <p><strong>Address:</strong> ${details.address}</p>
        <p><strong>Place of Apprehension:</strong> ${details.place_of_apprehension}</p>
      `;
        receiptExtraDetailsHTML = `
    <div style="margin-top:10px;">
        <h4 style="text-align:center; margin-bottom:10px;">
        VESSEL SPECIFICATIONS
        </h4>

        ${renderField('Violations', details.violation_type)}
    </div>
    `;
    }

    /* =============================
       YOUR ORIGINAL RECEIPT LAYOUT
       ============================= */

    receiptsHTML += `
      <div class="receipt">
        <div class="header">
          <h3>Republic of the Philippines</h3>
          <h3>Province of Southern Leyte</h3>
          <h3>Municipality of Anahawan</h3>
          <h2>OFFICIAL RECEIPT</h2>
        </div>

        <div class="row">
          <div><strong>Reference No:</strong> ${row.dataset.reference}</div>
          <div><strong>Date:</strong> ${new Date(row.dataset.date).toLocaleString()}</div>
        </div>

        <div class="section">
          ${receiptHeaderDetailsHTML}
        </div>

        <table>
          <tr>
            <th>Payment Details</th>
            <th>Amount (PHP)</th>
          </tr>
          <tr>
            <td>${type.replace(/_/g, ' ')}</td>
            <td style="text-align:right;">₱${Number(row.dataset.amount).toLocaleString()}</td>
          </tr>
        </table>
        ${receiptExtraDetailsHTML}
        <div class="total">
          TOTAL AMOUNT PAID: PHP ${Number(row.dataset.amount).toLocaleString()}
        </div>
        <div class="footer">
          This is a system-generated Official Receipt. No signature required.
        </div>
      </div>
      <div class="page-break"></div>
    `;
  }

  printReceipts(receiptsHTML);
};


  } catch (err) {
    console.error(err);
    tbody.innerHTML = `
      <tr>
        <td colspan="5" class="text-center text-danger">
          Failed to load transactions
        </td>
      </tr>
    `;
  }
}



function renderPaginatedRows() {
  const tbody = document.getElementById('cashierRenewalsBody');
  const pageIndicator = document.getElementById('pageIndicator');

  if (!allTransactions.length) {
    tbody.innerHTML = `
      <tr>
        <td colspan="5" class="text-center text-muted">
          No transactions found
        </td>
      </tr>
    `;
    pageIndicator.textContent = 'Page 0 of 0';
    return;
  }

  const start = (currentPage - 1) * rowsPerPage;
  const end = start + rowsPerPage;
  const pageData = allTransactions.slice(start, end);

  tbody.innerHTML = pageData.map(row => `
    <tr 
      data-reference="${row.reference_no}"
      data-type="${row.transaction_type}"
      data-related="${row.related_id}"
      data-date="${row.created_at}"
      data-amount="${row.amount}"
    >
      <td class="text-center">
        <input type="checkbox" class="receipt-checkbox">
      </td>
      <td>${row.reference_no}</td>
      <td>${row.transaction_type.replace(/_/g, ' ')}</td>
      <td >
        ${new Date(row.created_at).toLocaleDateString()}
      </td>
      <td class="text-end">
        ₱${Number(row.amount).toLocaleString()}
      </td>
    </tr>
  `).join('');
  // Reset "select all" checkbox when page changes
    const headerCheckbox = document.getElementById('receipt-checkbox');
    if (headerCheckbox) {
    headerCheckbox.checked = false;
    }


  const totalPages = Math.ceil(allTransactions.length / rowsPerPage);
  pageIndicator.textContent = `Page ${currentPage} of ${totalPages}`;

  document.getElementById('prevPage').disabled = currentPage === 1;
  document.getElementById('nextPage').disabled = currentPage === totalPages;
}




function printReceipts(content) {
  const printWindow = window.open('', '', 'width=900,height=700');

  printWindow.document.write(`
    <html>
    <head>
      <title>Official Receipt</title>
      <style>
        body {
          font-family: Arial, Helvetica, sans-serif;
          margin: 30px;
          color: #000;
        }

        .receipt {
          max-width: 800px;
          margin: auto;
          border: 1px solid #000;
          padding: 20px;
        }

        .header {
          text-align: center;
        }

        .header h3 {
          margin: 5px 0;
          font-size: 14px;
          text-transform: uppercase;
        }

        .header h2 {
          margin: 10px 0;
          font-size: 18px;
          letter-spacing: 1px;
        }

        .row {
          display: flex;
          justify-content: space-between;
          margin-top: 10px;
          font-size: 13px;
        }

        .label {
          font-weight: bold;
        }

        .section {
          margin-top: 15px;
          font-size: 13px;
        }

        table {
          width: 100%;
          border-collapse: collapse;
          margin-top: 10px;
          font-size: 13px;
        }

        th, td {
          border: 1px solid #000;
          padding: 6px;
          text-align: left;
        }

        th {
          background: #f0f0f0;
          text-align: center;
        }

        .total {
          margin-top: 10px;
          font-size: 16px;
          font-weight: bolder;
          color:red;
        }

        .footer {
          margin-top: 20px;
          font-size: 12px;
          text-align: center;
        }

        .page-break {
          page-break-after: always;
        }
      </style>
    </head>
    <body>
      ${content}
    </body>
    </html>
  `);

  printWindow.document.close();
  printWindow.focus();
  printWindow.print();
  printWindow.close();
}

function renderField(label, value) {
  if (value === null || value === undefined || value === '' || value ===0) {
    return '';
  }
  return `<p><strong>${label}:</strong> ${value}</p>`;
}



