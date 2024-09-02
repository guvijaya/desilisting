document.addEventListener('DOMContentLoaded', function() {
    const summaries = document.querySelectorAll('.summary');
    const detailsSections = document.querySelectorAll('.details');

    // Function to update the count next to each summary
    function updateCounts() {
        summaries.forEach(summary => {
            const id = summary.getAttribute('data-id');
            const details = document.getElementById(id);
            const itemCount = details.querySelectorAll('.list-group-item').length;
            summary.querySelector('.count').textContent = `- ${itemCount}`;
        });
    }

    // Function to show a specific section
    function showSection(id) {
        summaries.forEach(s => s.classList.remove('active'));
        detailsSections.forEach(details => details.classList.remove('active'));

        const activeSummary = document.querySelector(`.summary[data-id="${id}"]`);
        const activeDetails = document.getElementById(id);

        if (activeSummary && activeDetails) {
            activeSummary.classList.add('active');
            activeDetails.classList.add('active');
        }

        window.scrollTo({
            top: 0,
            behavior: 'smooth'
          });

        document.getElementById('secTitle').innerText = activeSummary.textContent;
    }

    // Update the counts initially
    updateCounts();

    // Set default selected section
    const defaultSectionId = "Groceries"; // Set this to the desired default section ID
    showSection(defaultSectionId);

    // Event listener for summary clicks
    summaries.forEach(summary => {
        summary.addEventListener('click', function(e) {
            e.preventDefault();
            const id = summary.getAttribute('data-id');
            showSection(id);
        });
    });
});
