const bar = document.querySelector(".bar");
const side = document.querySelector(".side");
const side_section = document.querySelector(".side_section");

bar.addEventListener("click", function() {
    side.style.marginRight = "0";
    side_section.style.backgroundColor = "rgba(0,0,0,0.7)";
    side_section.style.zIndex = "10000";
});

document.addEventListener("click", function(event) {
    if (!side.contains(event.target) && !bar.contains(event.target)) {
        side.style.marginRight = "-20vw";
        side_section.style.backgroundColor = "rgba(0,0,0,0)";
        side_section.style.zIndex = "-10000";
    }
});

document.querySelectorAll(".toggle-heading").forEach(function(heading) {
    heading.addEventListener("click", function() {
        // クリックされた h2 の次の要素(toggle-content)を取得
        const content = this.nextElementSibling;

        // toggle-content の表示/非表示を切り替え
        if (content.style.display === "block") {
            content.style.display = "none";
        } else {
            content.style.display = "block";
        }
    });
});

document.querySelector(".search_show").addEventListener("click", function() {
    document.querySelector(".search").style.top = "10vh";
})

document.querySelector(".x").addEventListener("click", function() {
    document.querySelector(".search").style.top = "0";
})

document.getElementById('searchForm').addEventListener('submit', function(event) {
    event.preventDefault();
    const input = document.getElementById('searchInput');
    const searchValue = input.value.trim();
    if (searchValue) {
        const formattedSearch = `${searchValue}`; // 検索クエリを " で囲む
        window.location.href = `/product/?search=${encodeURIComponent(formattedSearch)}`;
    }
});