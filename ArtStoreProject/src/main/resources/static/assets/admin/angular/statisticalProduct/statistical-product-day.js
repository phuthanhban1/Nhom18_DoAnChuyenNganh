// URL API bạn muốn gọi
const apiUrl = "http://localhost:8080/rest/statistical/product/day";

document.addEventListener("DOMContentLoaded", () => {
    // Gọi API bằng fetch
    fetch(apiUrl)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            return response.json(); // Parse dữ liệu JSON
        })
        .then(data => {
            // Khi dữ liệu được tải xong, khởi tạo biểu đồ
            new ApexCharts(document.querySelector("#barChart"), {
                series: [{
                    name:"Đã bán: ",
                    data: data.map(item => item.selled) // Trích xuất số lượng
                }],
                chart: {
                    type: 'bar',
                    height: 350
                },
                plotOptions: {
                    bar: {
                        borderRadius: 4,
                        horizontal: true,
                    }
                },
                dataLabels: {
                    enabled: false
                },
                xaxis: {
                    categories: data.map(item => item.name || "Không có tên"), // Trích xuất tên
                }
            }).render();
        })
        .catch(error => {
            console.error("Lỗi khi gọi API:", error);
        });
});
