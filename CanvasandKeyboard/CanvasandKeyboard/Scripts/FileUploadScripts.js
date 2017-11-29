function previewFile() {
    var preview = document.querySelector('#imgPreview');
    var file = document.querySelector('#fileButton').files[0];
    var reader = new FileReader();

    reader.onload = function () {
        preview.src = reader.result;
    }
    if (file) {
        reader.readAsDataURL(file);
    }
    else {
        preview.src = "";
    }
}