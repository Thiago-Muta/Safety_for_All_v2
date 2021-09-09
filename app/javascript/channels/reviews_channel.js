import consumer from "./consumer";

const initReviewsCable = () => {
  const reviewsContainer = document.getElementById('reviews-container');
  if (reviewsContainer) {
    const id = reviewsContainer.dataset.reportId;
    console.log(id);

    consumer.subscriptions.create({ channel: "ReviewsChannel", id: id }, {
      received(data) {

        // const reportReviewCount = document.querySelector(`#reviews-container-${data.report_id} #review-count`);
        // console.log(reportReviewCount)
        // if (reportReviewCount) {
        //   reportReviewCount.innerText = data.review_count
        // } else {
        //   const reviewTitle = document.getElementById(`reviews-container-${data.report_id}`);
        //   reviewTitle.innerHTML = '<p class="review-count">Total de comentarios: <span id="review-count">1</span></p>'
        // }

        const noReviewsContainer = document.getElementById('no-reviews-container');
        if (noReviewsContainer) { noReviewsContainer.remove() };

        const noReviewsTitle = document.getElementById('no-reviews');
        if (noReviewsTitle) { noReviewsTitle.remove() };

        reviewsContainer.insertAdjacentHTML('beforeend', data.partial);


        if (data.review_count == 1) {
          const reviewsCounter = `<h2>ESSA DENÚNCIA POSSUI: <span id="review-count"> ${data.review_count}</span> COMENTÁRIO(S) </h2>`
          reviewsContainer.insertAdjacentHTML('afterbegin', reviewsCounter);
        } else {
          const reviewCount = document.getElementById('review-count');
          reviewCount.innerText = data.review_count
        }
      },
    });
  }
}

export { initReviewsCable };
