[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet"
          href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
[#list seznamVizitek]
    <div class="seznam">
        [#items as vizitka]
            <a href="/detail/${vizitka?index}">
                <div class="vizitka">
                    <form method="post" action="/delete"><input type="hidden" name="id" value="${vizitka?index}"/>
                        <div class="vymazat">
                            <button class="btn btn-primary"><i class="bi bi-trash"></i></button>
                        </div>
                    </form>
                    <div class="jmeno">${vizitka.jmeno}</div>
                    <div class="firma">${vizitka.firma}</div>
                    <div class="udaje">
                        <div class="adresa">
                            <div>${vizitka.ulice}</div>
                            <div>${vizitka.obecPsc}</div>
                        </div>
                        <div class="kontakty">
                            <div><i class="las la-at"></i>
                                <span>
                                    [#if vizitka.email??]${vizitka.email}[#else]není uvedeno
                                    [/#if]
                                </span>
                            </div>
                            <div><i class="las la-phone-alt"></i>
                                <span>
                                    [#if vizitka.telefon??]${vizitka.telefon}[#else]není uvedeno[/#if]
                                </span>
                            </div>
                            <div><i class="las la-globe"></i>
                                <span>[#if vizitka.web??]${vizitka.web}[#else]není uvedeno[/#if]
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </a>
        [/#items]
        <a href="/nova">
            <div class="vizitka vizitka--nova">
                <svg width="100" height="100">
                    <rect width="20" height="100" x="40" y="0" fill="white"/>
                    <rect width="100" height="20" x="0" y="40" fill="white"/>
                </svg>
            </div>
        </a>
    </div>
[/#list]


</body>
</html>
