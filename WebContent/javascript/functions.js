
function getFile(filePath) {
        return filePath.substr(filePath.lastIndexOf('\\') + 1).split('.')[0];
    }

    function getoutput() {
        outputfile.value = getFile(inputfile.value);
        extension.value = inputfile.value.split('.')[1];
    }

