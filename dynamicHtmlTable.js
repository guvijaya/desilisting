document.addEventListener('DOMContentLoaded', function() {
        // Load CSV or JSON data
    async function loadData(url) {
        const response = await fetch(url);
        const data = await response.text();
        return data;
    }

    // Parse CSV data
    function parseCSV(data) {
        const lines = data.split('\n');
        const headers = lines[0].split(',');
        const rows = lines.slice(1).map(line => line.split(','));
        return { headers, rows };
    }

    // Render table
    function renderTable(headers, rows) {
        const tableHeader = document.getElementById('table-header');
        const tableBody = document.getElementById('table-body');

        headers.forEach(header => {
            const th = document.createElement('th');
            th.textContent = header;
            tableHeader.appendChild(th);
        });

        rows.forEach(row => {
            const tr = document.createElement('tr');
            row.forEach(cell => {
                const td = document.createElement('td');
                td.textContent = cell;
                tr.appendChild(td);
            });
            tableBody.appendChild(tr);
        });
    }

    // Example with CSV
    loadData('database.csv').then(data => {
        const { headers, rows } = parseCSV(data);
        renderTable(headers, rows);
    });

});
