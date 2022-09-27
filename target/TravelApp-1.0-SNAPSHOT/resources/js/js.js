/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

$(document).ready(function () {
    $('[data-toggle="toggle"]').change(function () {
        $(this).parents().next('.hide').toggle();
    });
});

$(`#checkAll`).click(function () {
    if ($(this).is(":checked")) {
        $("#table-hall input").each(function ()
        {
            $(this).prop("checked", true);
        })
    } else {
        $("#table-hall input").each(function ()
        {
            $(this).prop("checked", false);
        })
    }
})
function deleteDdthamquan(endpoint, mSDD, btn) {
    let r = document.getElementById(`row${mSDD}`);
    let load = document.getElementById(`load${mSDD}`);
    load.style.display = "block";
    btn.style.display = "none";
    fetch(endpoint, {
        method: 'delete'
    }).then(function (res) {
        if (res.status === 204)
            alert("Something wrong !!!");
        load.style.display = "none";
        r.style.display = "none";
    }).catch(function (err) {
        console.error(err);
        btn.style.display = "block";
         load.style.display = "none";
    });
}

function getDdthamquans(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let d = document.getElementById("myDdthamquan");
        if (d !== null) {
            let h = "";
            for (let i = 0; i < data.length; i++)
                h += `
                <tr id="row${data[i].mSDD}">
                    <td>${data[i].tenDD}</td>
                    <td>${data[i].gia} VND</td>
                    <td>
                        <div class="spinner-border text-info" style="display:none" id="load${data[i].mSDD}"></div>
                        <button class="btn btn-danger" onclick="deleteDdthamquan('${endpoint + "/" + data[i].mSDD}', ${data[i].mSDD})">Xoa</button></td>
                    </tr>
        `;
            d.innerHTML = h;
        }
        let d2 = document.getElementById("mySpinner");
        d2.style.display = "none";
    }).catch(function (err) {
        console.error(err);
    });
}
