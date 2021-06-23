// import pluggin
import { Chart } from 'chart.js'

//create fuction
const initChart = () => {
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

//export function
export { initChart }
