import { Controller } from "stimulus";
import { Chart } from 'chart.js'
import "chartkick/chart.js"

export default class extends Controller {
  connect() {
    const ctx = document.getElementById('myChart');
    const chartData = document.getElementById("chartData");

    const jsonChartData = JSON.parse(chartData.dataset.chart);

    const myChart = new Chart(ctx, {
        type: 'doughnut',
        data: jsonChartData,
        options: {
          plugins: {
              legend: {
                  display: false
              }
          }
      }
    });

  }
}
