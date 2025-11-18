 document.addEventListener("DOMContentLoaded", () => {
   const form = document.getElementById("cadastroForm");
   const nomeCompletoInput = document.getElementById("nomeCompleto");
   const cpfInput = document.getElementById("cpf");
   const crmInput = document.getElementById("crm");
   const especialidadeInput = document.getElementById("especialidade");
   const profissionaisLista = document.getElementById("profissionaisLista");

   const profissionaisCadastrados = JSON.parse(localStorage.getItem("profissionais")) || [];

   const atualizarListaProfissionais = () => {
     profissionaisLista.innerHTML = "";
     profissionaisCadastrados.forEach((profissional, index) => {
       const li = document.createElement("li");
       li.textContent = `${profissional.nome} - ${profissional.especialidade}`;

       const removerBtn = document.createElement("button");
       removerBtn.textContent = "Remover";
       removerBtn.classList.add("remover-btn");
       removerBtn.onclick = () => {
         profissionaisCadastrados.splice(index, 1);
         localStorage.setItem("profissionais", JSON.stringify(profissionaisCadastrados));
         atualizarListaProfissionais();
       };

       li.appendChild(removerBtn);
       profissionaisLista.appendChild(li);
     });
   };

   atualizarListaProfissionais();

   form.addEventListener("submit", (e) => {
     e.preventDefault();

     const nomeCompleto = nomeCompletoInput.value.trim();
     const cpf = cpfInput.value.trim();
     const crm = crmInput.value.trim();
     const especialidade = especialidadeInput.value.trim();

     if (nomeCompleto && cpf && crm && especialidade) {
       const novoProfissional = {
         nome: nomeCompleto,
         cpf: cpf,
         crm: crm,
         especialidade: especialidade,
       };
 
       profissionaisCadastrados.push(novoProfissional);
       localStorage.setItem("profissionais", JSON.stringify(profissionaisCadastrados));

       atualizarListaProfissionais();

       nomeCompletoInput.value = "";
       cpfInput.value = "";
       crmInput.value = "";
       especialidadeInput.value = "";
     } else {
       alert("Por favor, preencha todos os campos.");
     }
   });
 });