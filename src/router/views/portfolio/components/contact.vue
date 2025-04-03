<script>
export default {
  name: "contact"
}
</script>

<template>
  <section class="contact">
    <div class="contact-container">
      <h2>Contact Me</h2>
      <p>궁금한 점이나 문의사항이 있으시면 언제든지 연락주세요!</p>
      <form class="contact-form">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" placeholder="Enter your name">
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" placeholder="Enter your email">
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="message" rows="5" placeholder="Enter your message"></textarea>
        </div>
        <button type="submit" class="submit-button">Send Message</button>
      </form>
    </div>
  </section>
</template>

<style scoped lang="scss">
.contact {
  background-color: #f8f9fa; /* 배경색 (원하는 색상으로 변경) */
  padding: 80px 0;
}

.contact-container {
  max-width: 800px;
  margin: 0 auto;
  padding: 0 20px;
}

h2 {
  font-size: 32px;
  font-weight: bold;
  margin-bottom: 30px;
  text-align: center;
}

p {
  font-size: 18px;
  color: #555;
  text-align: center;
  margin-bottom: 40px;
}

.contact-form {
  display: flex;
  flex-direction: column;
}

.form-group {
  margin-bottom: 20px;
}

label {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 5px;
  display: block;
}

input[type="text"],
input[type="email"],
textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ddd;
  border-radius: 5px;
  font-size: 16px;
  resize: none; /* textarea 크기 조절 방지 */
}

.submit-button {
  background-color: #007bff; /* 버튼 색상 (원하는 색상으로 변경) */
  color: #fff;
  font-size: 18px;
  padding: 12px 24px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.submit-button:hover {
  background-color: #0056b3; /* hover 시 버튼 색상 변경 (원하는 색상으로 변경) */
}
</style>