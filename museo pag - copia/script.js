document.getElementById("reservaForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const fecha = document.getElementById("fecha").value;
    const hora = document.getElementById("hora").value;
    if (fecha && hora) {
      document.getElementById("mensaje").textContent = `¡Reserva confirmada para el ${fecha} a las ${hora}!`;
      this.reset();
    }
  });
  