<!-- Modal -->
<div class="modal fade" id="modalMañana" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Turno Mañana</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
     <br>
    <!-- Calendario Formulario -->  
    <form action="#">
      <h4 class="fw-bold fs-3">Fecha:</h4>
        <input type="date" id="Test_DatetimeLocal" name ="fecha">
      <br>
      <!-- Idiomas -->
      <h4 class="fw-bold fs-3">Idiomas:</h4>
      <div class="form-check">
        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
        <label class="form-check-label" for="flexRadioDefault1">
          Español
        </label>
      </div>
      
      <div class="form-check">
        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
        <label class="form-check-label" for="flexRadioDefault2">
          Ingles
        </label>
      </div>


      <!-- Visitas -->
      <h4 class="fw-bold fs-3">Visitas:</h4>
      <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
        <label class="form-check-label" for="inlineRadio1">1</label>
      </div>
      <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
        <label class="form-check-label" for="inlineRadio2">2</label>
      </div>
      <div class="form-check form-check-inline">
      <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3">
        <label class="form-check-label" for="inlineRadio3">3</label>
      </div>

      </div>
      <div class="modal-footer">
         <button type="submit" class="btn btn-dark" data-bs-dismiss="modal">Pedir Turno</button>
      </form>
      <!-- Boton Cerrar -->
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>