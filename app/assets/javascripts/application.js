// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require react
//= require react_ujs
//= require components
//= require_tree .

$(function() {
  $( "#datepicker" ).datepicker();
});

$(document).ready(() => {
  $('.account-image').click(displayLoginField);
  $('input').click(displayCheckboxValue);
});

function displayLoginField() {
  $('.login-image').toggleClass('hidden')
}

$(function() {
  var availableTags = [
    "Berlin",
    "London"
  ];
  $( ".where" ).autocomplete({
    source: availableTags
  });
});

function displayCheckboxValue(e) {
  if($('input[type=checkbox]:checked')) {
    let list = `<li>
                  <span class="checked-destinations">${e.target.value}</span>
                </li>`;

    $( ".choosen-destinations" ).append(list);
  }
  $( "#make-schedule" ).remove()
  $( ".choosen-destinations" ).append(`<button id="make-schedule" class="display-map">Make schedule!</button>`);
  $( "#make-schedule" ).click(initialize);
}

function initialize() {
    var myLatlng = new google.maps.LatLng(52.520066,13.415127);
    var myOptions = {
        zoom: 13,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById("map"), myOptions);

    var decodedPath1 = google.maps.geometry.encoding.decodePath('skn_I}_vpAb@bS?b@y@`@s@^cC~@{DdBoAd@}LjF}IvDeGhC_EbB[J{@ZeBPm@JgHt@uBRI?yEb@{@HGBSF_E\\aD\\qKbAyBR_D`@iBRs@Fi@AcEb@aBLyALOJ_@eBWeA]}A\\|ALKhCeDlA{A\\a@La@Fc@Jc@rAsB^s@x@gFz@eG]wGGkAIaBJIvBUPC?K?O?An@yEVwAP_@r@qEhCwP|BuN~AcJZyBHMJi@b@cB^}@fAoDVy@JMl@Wl@UXUI]KeEBo@Lm@R[jAeArAoA`CqDbBcCd@{@]}@^s@AGC[De@TcBFe@?WGOES?c@Fa@FMDEy@oB^oB]_AN[AGAQ?SFm@?OAMCY{@wBEKKMMA]Fi@Na@iA')

 var decodedPath2 =
    google.maps.geometry.encoding.decodePath('aqm_IatjpAMl@GNKNg@qDaB}MYuBKoAAe@HiDBi@GA]IGEGM[CqAUOENaEBy@@k@G{BSwBK{AEcBBcBJiAPuAYE]EKCUKOQSe@YoBaBiN}@_Ik@qEe@uB_@cAYk@m@{@u@{@y@i@}@c@aAWq@c@W]Ug@[iAO}AOoCE}A?e@[A[s@Ow@UqCM{@Oe@_AsBB]RmDcAgCwAiCYy@k@eFQqAM[QYc@_@UYI]MaAAaAYKuBi@B{B?iBGcAWiCWqBSm@MUeA}@z@oD}BiBWMcA_@}@Ma@BMkCSuGQuJI}Hi@wLM_B@Q?q@IoBOoCMyA[iCGSQSAa@MgF@UBSQ{FQeGCyB_@wNcAu]g@aSKaCE{@Gk@EYMoFOoGM}FUqGOuBOqAYgA]iBqCwJk@mBq@aBkAoCaAeC]}@\\q@?ECWDm@\\iC?WCGEOC]@c@L]DEy@oB^oB]_AN[AGAQ@e@Dg@AQCY{@wBEKKMEAQ@i@LSFu@uBIQOOWE~AyCHURcA\\q@V[PIPSnAiBo@aBk@yAWg@Qa@]i@}@gAOOj@i@|@iAv@{@hB}B~A{Ab@]dAy@`@WfCkA`AUz@wEb@uBgCoBfBgIfFkUTuAfA{PlAaRpA{SBc@Vu@j@gBjBsFnAiFf@wBv@j@`Ar@bKqSDAF@DW')

	var decodedPath3 = google.maps.geometry.encoding.decodePath('_`o_Ico{pA~BaNjBaL~BoMfAuFrAqEr@wBxAmEKQ]o@W[_@QUUwAeAoD_DoAaA{@s@tCqKh@mB|A_Gd@wATs@We@g@{@gBeCmCeDy@}@QMMKRcATu@~AuEjDoK}G{Ew@i@DWEVv@h@|@p@Sp@KVsCdGq@lAbA`Af@b@BNUnAMl@GN]vAMp@NJu@fCyBxHIAG@YbAkAdGSMg@fLGvBYvEeAfRQhECRFFHHJFh@LZNJFOVs@pAm@nA]r@O\\q@nCkFxTyAvFU~@PFp@VhEl@vAPEv@[bAWv@E\\S|E@h@NlAHRLLb@b@LPFLZnA~C~NdAhE|@lE\\nCVlAn@pCx@|DXjDMvHEhCBf@@NErC@n@Rz@^dABh@AVXEd@@\\H\\VdChDj@n@JH`BbABFBJ|AbAz@h@El@NtGf@lSRxJf@hS')

    var decodedLevels = decodeLevels("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB");

    var setRegion = new google.maps.Polyline({
        path: decodedPath1,
        levels: decodedLevels,
        strokeColor: "#FF0000",
        strokeOpacity: 1.0,
        strokeWeight: 2,
        map: map
    });

    var setRegion = new google.maps.Polyline({
        path: decodedPath2,
        levels: decodedLevels,
        strokeColor: "#FF0000",
        strokeOpacity: 1.0,
        strokeWeight: 2,
        map: map
    });

    var setRegion = new google.maps.Polyline({
        path: decodedPath3,
        levels: decodedLevels,
        strokeColor: "#FF0000",
        strokeOpacity: 1.0,
        strokeWeight: 2,
        map: map
    });

}

function decodeLevels(encodedLevelsString) {
    var decodedLevels = [];

    for (var i = 0; i < encodedLevelsString.length; ++i) {
        var level = encodedLevelsString.charCodeAt(i) - 63;
        decodedLevels.push(level);
    }
    return decodedLevels;
}
