
const filterElement = document.querySelector("calcite-filter");
const paginationElement = document.querySelector("calcite-pagination");
const initialNoticeElement = document.getElementById("initial-note");
const noticeElement = document.getElementById("note");
const cardContainer = document.querySelector(".card-container");

/* Fetch the earthquakes feature service */
fetch("https://services9.arcgis.com/RHVPKKiFTONKtxq3/ArcGIS/rest/services/USGS_Seismic_Data_v1/FeatureServer/0/query?where=1%3D1&outFields=*&f=json")
    .then((response) => response.json())
    .then(({ features }) => features.map(({ attributes }) => attributes))

    .then((attributes) => initFilter(attributes));

/* Filter the results to display */
const initFilter = (items) => {
    filterElement.items = items;

    document.addEventListener("calciteFilterChange", () => {
        paginationElement.startItem = 1;
        paginationElement.totalItems = 0;

        // Prevent display if no Filter value is present
        noticeElement.open = false;

        paginationElement.style.visibility = "hidden";

        cardContainer.innerHTML = "";

        // When a Filter value is present
        // Create Cards, update Pagination, and number of responses
        if (filterElement.value) {

            filterElement.filteredItems.forEach((item) => createCard(item));
            paginationElement.totalItems = filterElement.filteredItems.length;

            showNumberOfResponses(filterElement.filteredItems.length);

            // If additional pages are populated, display Pagination
            if (paginationElement.totalItems > paginationElement.pageSize) {
                paginationElement.style.visibility = "visible";
            }

        } else {
            // If no text is present in the Filter, display the initial notice
            initialNoticeElement.open = true;
        }

    });

};

/* Create Cards and their content */
const createCard = (item) => {
    const titleName = item.place.replace(/[;']/g, "");
    // Populate Card content
    if (cardContainer.childElementCount < paginationElement.pageSize) {
        const cardString =
            `<calcite-card id="card-${item.OBJECTID}">
        <span slot="title">
          <b>${item.place}</b>
        </span>
        <span slot="subtitle">
          Occurred on: ${new Date(item.eventTime)}
        </span>
        <calcite-chip
          appearance="outline-fill"
          scale="s"
          kind="inverse"
          icon="graph-time-series"
        >
          Magnitude: ${item.mag}
        </calcite-chip>
        <calcite-button
          label="Open ${titleName} in map"
          icon-end="launch"
          slot="footer-end"
          target="_blank"
          width="full"
          href="https://www.arcgis.com/apps/mapviewer/index.html?` +
            `marker=${item.longitude};${item.latitude};` + // Marker (lng, lat)
            `4326;` + // Coordinate system
            titleName + `;` +
            `;` + // Marker image
            `Magnitude: ${item.mag}&` +
            `center=${item.longitude};${item.latitude}&` +
            `level=6"
        >
          Open in map
        </calcite-button>
        </calcite-card>`;
        const cardElement = document
            .createRange()
            .createContextualFragment(cardString);
        cardContainer.appendChild(cardElement);
    }
};

/* Display the number of responses in a Notice */
// function showNumberOfResponses(responseNumber) {
//     const note = document.getElementById("note");
//     const numberRecordsNote = document.getElementById("number-records");
//     // If 0 responses, add "Sorry" to the Notice text
//     // Add the Notice color and icon
//     if (responseNumber === 0) {
//         responseNumber = `Sorry, ${responseNumber}`
//         note.kind = "danger";
//         note.icon = "exclamation-mark-triangle";
//     } else {
//         note.kind = "brand";
//         note.icon = "information";
//     }
//     // Hide the initial notice
//     initialNoticeElement.removeAttribute("open");
//     // Notice text
//     numberRecordsNote.innerHTML = `${responseNumber} records found.`;
//     noticeElement.open = true;
// }

/* Update Cards when interacting with Pagination */
document.addEventListener("calcitePaginationChange", ({ target }) => {

    cardContainer.innerHTML = "";

    const displayItems = filterElement.filteredItems.slice(
        target.startItem - 1,
        target.startItem - 1 + target.pageSize
    );

    displayItems.forEach((item) => createCard(item));

});