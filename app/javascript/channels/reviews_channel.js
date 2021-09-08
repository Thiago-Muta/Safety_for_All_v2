import consumer from "./consumer";

const initReviewsCable = () => {
  const reviewsContainer = document.getElementById('reviews-container');
  if (reviewsContainer) {
    const id = reviewsContainer.dataset.reportId;
    console.log(id);

    consumer.subscriptions.create({ channel: "ReviewsChannel", id: id }, {
      received(data) {

        const reportReviewCount = document.getElementById(`review-count-${data.report_id}`);
        console.log(reportReviewCount)
        if (reportReviewCount) { reportReviewCount.innerText = data.review_count };

        const noReviewsContainer = document.getElementById('no-reviews-container');
        if (noReviewsContainer) { noReviewsContainer.remove() };

        reviewsContainer.insertAdjacentHTML('beforeend', data.partial);


        if (data.review_count == 1) {
          const reviewsCounter = `<strong>Total comentários: <span id="review-count"> ${data.review_count}</span></strong>`
          reviewsContainer.insertAdjacentHTML('afterend', reviewsCounter);
        } else {
          const reviewCount = document.getElementById('review-count');
          reviewCount.innerText = data.review_count
        }
      },
    });
  }
}

export { initReviewsCable };
