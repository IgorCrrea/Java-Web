function verificooDeCampos(){
    let nome = document.getElementById("nome").value;
    let data = document.getElementById("data").value;
    if(nome.length <=0 || data.length <10){
        window.alert("Favor verificar valores inseridos e tentar novamente");
    }else{
        document.getElementById("formLogin").submit();
    }
}