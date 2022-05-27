 google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Visiter', 'Months'],
          ['Instagram',     11],
          ['Facebook',      4],
          ['Twiter',  5],
          ['Google-ad', 6],
          ['Other',    3]
        ]);

        var options = {
          title: 'Online visiter from',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
}
      


google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawVisualization);

      function drawVisualization() {
        // Some raw data (not necessarily accurate)
        var data = google.visualization.arrayToDataTable([
          ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
          ['2021/05',  165,      938,         522,             998,           450,      614.6],
          ['2021/06',  135,      1120,        599,             1268,          288,      682],
          ['2021/07',  157,      1167,        587,             807,           397,      623],
          ['2021/08',  139,      1110,        615,             968,           215,      609.4],
          ['2021/09',  136,      691,         629,             1026,          366,      569.6]
        ]);

        var options = {
          title : 'Monthly Coffee Production by Country',
          vAxis: {title: 'Cups'},
          hAxis: {title: 'Month'},
          seriesType: 'bars',
          series: {5: {type: 'line'}}
        };

        var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }