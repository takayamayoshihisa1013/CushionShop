document.querySelector(".add_size").addEventListener("click", function () {
    const size = document.querySelector(".size");
    let size_input = document.createElement("div");
    size_input.classList.add("size_input");
    let input_size = document.createElement("input");
    input_size.name = "size_name";
    input_size.type = "text";
    let input_x = document.createElement("input");
    let input_y = document.createElement("input");
    input_x.type = "number";
    input_y.type = "number";
    input_x.name = "size_x";
    input_y.name = "size_y";
    let kakeru = document.createTextNode("×");
    size_input.appendChild(input_size);
    size_input.appendChild(input_x);
    size_input.appendChild(kakeru);
    size_input.appendChild(input_y);
    size.appendChild(size_input);
});

var i = 1;

document.querySelector(".add_img").addEventListener("click", function () {
    const sub_img = document.querySelector(".sub_img");
    let input_file = document.createElement("input");
    input_file.id = `sub_img${i}`;
    input_file.type = "file";
    input_file.name = "sub_img";
    let label = document.createElement("label");
    label.setAttribute("for", `sub_img${i}`);
    label.classList.add("file-input-label");
    label.innerText = "画像を入力";
    let p = document.createElement("p");
    p.id = `sub-file-name${i}`;
    p.innerText = "選択されたファイルが表示されます";

    sub_img.appendChild(input_file);
    sub_img.appendChild(label);
    sub_img.appendChild(p);

    // 新しく追加されたファイル入力に対してイベントリスナーを追加
    addFileInputListener(input_file, p);

    i++;
});

document.querySelector(".add_color").addEventListener("click", function () {
    const color = document.querySelector(".color");
    let input_color = document.createElement("input");
    input_color.type = "color";
    input_color.name = "color";
    color.appendChild(input_color);
});

// 既存のファイル入力要素にイベントリスナーを追加
document.querySelectorAll('input[type="file"]').forEach(function(inputElement) {
    const pElement = inputElement.nextElementSibling.nextElementSibling;
    addFileInputListener(inputElement, pElement);
});

function addFileInputListener(inputElement, pElement) {
    inputElement.addEventListener('change', function () {
        if (inputElement.files.length > 0) {
            pElement.textContent = `選択されたファイル: ${inputElement.files[0].name}`;
        } else {
            pElement.textContent = '選択されたファイルが表示されます';
        }
    });
}
