 document.addEventListener("DOMContentLoaded", () => {
   const form = document.getElementById("agendamentoForm");
   const pacienteInput = document.getElementById("paciente");
   const medicosSelect = document.getElementById("medicos");
   const especialidadeInput = document.getElementById("especialidade");
   const dataInput = document.getElementById("data");
   const horarioSelect = document.getElementById("horario");
   const motivoInput = document.getElementById("motivo");
   const tipoConsultaSelect = document.getElementById("tipoConsulta");
   const planoSaudeInput = document.getElementById("planoSaude");
   const numeroCarteiraInput = document.getElementById("numeroCarteira");
   const observacoesInput = document.getElementById("observacoes");
   const consultasLista = document.getElementById("consultasLista");

   const consultasAgendadas = JSON.parse(localStorage.getItem("consultas")) || [];

   const atualizarListaConsultas = () => {
     consultasLista.innerHTML = "";
     consultasAgendadas.forEach((consulta, index) => {
       const li = document.createElement("li");
       li.textContent = `${consulta.paciente} - ${consulta.medico} - ${consulta.data} ${consulta.horario} - ${consulta.especialidade}`;

       const removerBtn = document.createElement("button");
       removerBtn.textContent = "Remover";
       removerBtn.classList.add("remover-btn");
       removerBtn.onclick = () => {
         consultasAgendadas.splice(index, 1);
         localStorage.setItem("consultas", JSON.stringify(consultasAgendadas));
         atualizarListaConsultas();
       };

       li.appendChild(removerBtn);
       consultasLista.appendChild(li);
     });
   };

   atualizarListaConsultas();
 
   form.addEventListener("submit", (e) => {
     e.preventDefault();
 
     const paciente = pacienteInput.value.trim();
     const medico = medicosSelect.value;
     const especialidade = especialidadeInput.value.trim();
     const data = dataInput.value;
     const horario = horarioSelect.value;
     const motivo = motivoInput.value.trim();
     const tipoConsulta = tipoConsultaSelect.value;
     const planoSaude = planoSaudeInput.value.trim();
     const numeroCarteira = numeroCarteiraInput.value.trim();
     const observacoes = observacoesInput.value.trim();

     const conflito = consultasAgendadas.some(
       (consulta) => consulta.data === data && consulta.horario === horario
     );
 
     if (conflito) {
       alert("Já existe uma consulta agendada para este dia e horário.");
       return;
     }

     if (paciente && medico && especialidade && data && horario) {
       const novaConsulta = {
         paciente,
         medico,
         especialidade,
         data,
         horario,
         motivo,
         tipoConsulta,
         planoSaude,
         numeroCarteira,
         observacoes,
       };

       consultasAgendadas.push(novaConsulta);
       localStorage.setItem("consultas", JSON.stringify(consultasAgendadas));

       atualizarListaConsultas();

       pacienteInput.value = "";
       especialidadeInput.value = "";
       motivoInput.value = "";
       planoSaudeInput.value = "";
       numeroCarteiraInput.value = "";
       observacoesInput.value = "";
     } else {
       alert("Por favor, preencha todos os campos obrigatórios.");
     }
   });
 });