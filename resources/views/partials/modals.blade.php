<!-- Модалки -->
<div class="modal modal-leave-feedback" :class="{'modal-show': isModalLeaveFeedback}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>Заказать консультацию</h3>
        <form id="feedback_id" action="{{route('c_order')}}" method="POST">
            @csrf
            <div>
                <input type="text" name="name" placeholder="Имя*" required>
                <label>Как к вам обращаться?</label>
            </div>
            <div>
                <input required type="text" name="phone" @click="phoneValue(event)" placeholder="+7 (___) __-__-___ " v-maska="['+7 (###) ##-##-##', '+7 (###) ###-##-##']">
                <label>Номер телефона</label>
            </div>
            <input type="hidden" name="url" value="{{\Request::url()}}">
            <input type="hidden" name="title" v-model="valueFeedbackInput">
			<!--<input type="hidden" name="browser" value="">-->
            <div id="error" style="padding:10px;color:red;font-weight:bold;"></div>
            <button type="submit">Отправить заявку</button>
            <p>Нажимая на кнопку “ Отправить”, я подтверждаю свое согласие с <a href="/policy">политикой конфиденциальности</a></p>
        </form>
    </div>
</div>
<div class="modal modal-reviews" :class="{'modal-show': isModalReviews}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>Оставьте Ваш честный отзыв!</h3>
        <form id="review_id" action="{{route('p_review')}}" method="POST">
            @csrf
            <div>
                <input type="text" name="name" placeholder="Имя*" required>
                <label>Как к вам обращаться?</label>
            </div>
            <div>
                <input type="email" name="email" placeholder="example@mail.ru*" required>
                <label>Ваш E-mail</label>
            </div>
            <label>Ваш отзыв</label>
            <textarea name="text"></textarea>
			<div id="error_rev" style="padding:10px;color:red;font-weight:bold;"></div>
            <button type="submit">отправить</button>
            <p>Нажимая на кнопку “ Отправить”, я подтверждаю свое согласие с <a href="/policy">политикой конфиденциальности</a></p>
        </form>
    </div>
</div>
<div class="modal modal-success-feedback" :class="{'modal-show': isModalSuccessFeedback}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>Спасибо!</h3>
        <h4>Ваша заявка принята. </h4>
        <h4>Наш эксперт свяжется с Вами в ближайшее время! </h4>
        <a href="#">Перейти на главную</a>
    </div>
</div>
<div class="modal modal-success-feedback" :class="{'modal-show': isModalSuccessReviews}">
    <button @click="toggleWrapper" class="modal__close"><i class="bi bi-x-lg"></i></button>
    <div class="modal__content">
        <h3>Благодарим за Ваш честный отзыв!</h3>
        <p>ваш отызыв проверяется администратором</p>
        <a href="/">Можете перейти на главную</a>
    </div>
</div>
<!-- vue.toggleModalSuccessFeedback() -->
<!-- vue.toggleModalSuccessReviews() -->
<!-- /Модалки -->

<!-- Загрузка сайта -->
<!-- <div class="loader" :class="{'loader-done' : !isOnload}"></div> -->
<!-- /Загрузка сайта -->