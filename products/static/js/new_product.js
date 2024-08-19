document.querySelector(".add_size").addEventListener("click", function() {
    const size = document.querySelector(".size");
    let size_input = document.createElement("div");
    size_input.classList.add("size_input");
    let input_size = document.createElement("input");
    input_size.name = "size_name";
    input_size.type = "text";
    input_x = document.createElement("input");
    input_y = document.createElement("input");
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
})

document.querySelector(".add_img").addEventListener("click", function() {
    const sub_img = document.querySelector(".sub_img");
    let input_file = document.createElement("input");
    input_file.id = "sub_img";
    input_file.type = "file";
    input_file.name = "sub_img";
    let label = document.createElement("label");
    label.setAttribute("for", "sub_img");
    label.innerText = "画像を入力";

    sub_img.appendChild(input_file);
    sub_img.appendChild(label);

})