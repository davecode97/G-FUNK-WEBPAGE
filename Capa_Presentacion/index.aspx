<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Capa_Presentacion.WebForm1" %>

<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>G-FUNK</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'/>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'/>
    <link href="https://fonts.googleapis.com/css?family=Manjari&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/style.css"/>

    <style type="text/css">
        .auto-style2 {
            margin-left: 233;
        }
        .auto-style3 {
            width: 559px;
        }
    </style>

</head>
<body>
    <header class="title">
        <h1>G-Funk</h1>
    </header>

    <form id="form1" runat="server">
    <div class="container">
        <header class="header">
            <ul class="active">
                <h1>
                    <li><a href="Index.aspx">Inicio</a></li>
                    <li><a href="style.html">Style</a></li>
                    <li><a href="music.html">Música</a></li>
                    <li><a href="about.html">Nosotros</a></li>
                    <li><a href="contact.html">Contacto</a></li>
                </h1>
            </ul>
             
        </header>


        <main class="content">
            <article class="article">
                <h1>
                    ESCUCHA A JESSIE REYEZ Y EMINEM JUNTOS EN LA CANCIÓN “COFFIN”
                </h1>
                <i id="demo"></i>

                <p>
                    Ya anteriormente Jessie Reyez y Eminem habían colaborado para canciones del último disco del rapero, Kamikaze, demostrándonos que juntos son dinamita. Es por eso que ahora nuevamente decidieron unirse para presentarnos un nuevo tema titulado Coffin.
                </p>
                <p>
                    Esta canción formará parte del tan esperado álbum debut de Jessie, Before Love Came To Kill Us. El cual será estrenado oficialmente a la media noche (27 de marzo). Ya también habíamos tenido un adelanto del disco con los sencillos Love In The Dark e Imported con 6LACK.


                </p>
                <p>
                    Coffin fue lanzada exclusivamente a través de Apple Music, escúchala a continuación:
                    <br><br>
                    <iframe allow="autoplay *; encrypted-media *;" frameborder="0" height="150" style="width:100%;max-width:660px;overflow:hidden;background:transparent;" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-storage-access-by-user-activation allow-top-navigation-by-user-activation" src="https://embed.music.apple.com/nz/album/coffin-feat-eminem/1502627765?i=1502628054"></iframe>
                </p>
            </article>
            <article class="article">
                <h1>Old School</h1>
                <i id="demo2"></i>                

                <p>
                    <iframe width="400" height="200" src="https://www.youtube.com/embed/1plPyJdXKIY?start=12" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </p>
                <p>
                    «Regulate» es una canción de 1994 interpretada por Warren G y Nate Dogg.1​ Se lanzó el verano de 1994 (EE.UU.). Aparece en la banda sonora de la película Above the Rim y más tarde en el álbum de Warren G Regulate...G Funk Era.2​3​ Con el apoyo de MTV, la canción alcanzó el #2 en el Billboard Hot 100.
                </p>
                <p>
                    Fuente >> <a href="https://es.wikipedia.org/wiki/Regulate" target="black">https://es.wikipedia.org/wiki/Regulate</a>
                </p>
            </article>
            <article class="article">
                <h1>La Pizarra NBA: Juan Toscano y su valor en Golden State Warriors más allá de los intangibles</h1>
                <i id="demo3"></i>
                <p>
                    En esta ocasión de la sección de NBA Global, nos metemos a analizar las 13 participaciones que tuvo el mexicano de Golden State Warriors en su temporada como novato. Aunque su mayor cualidad es en el costado defensivo, está claro que le brinda más cosas a la franquicia de la Bahía.
                </p>
                <p>
                  
                </p>
                <p>
                    Fuente >> <a href="https://mx.nba.com/news/la-posesion-juan-toscano-mas-alla-de-sus-habilidades-defensivas/6c3fq5i5zem71iszhjngao4mx" target="black">NBA NEWS</a>
                </p>
            </article>
        </main>

        <aside class="sidebar"> 
                <img src="https://1000logos.net/wp-content/uploads/2017/08/Spotify-Logo-500x367.png" width="100" height="100">
               <br />
               <br />
            <div>
                <p>
                    <iframe src="https://open.spotify.com/embed?uri=spotify%3Aplaylist%3A37i9dQZF1DX7FY5ma9162x" width="300" height="380" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe>
                </p>               
            </div>
            <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br />  <br />  <br />  <br />
            <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br />  <br />  <br />  <br />
            <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br />  <br />  <br />  <br />
        </aside>

        <!-- footer -->
        <footer class="footer">
            <table>
                <tr>
                    <td class="auto-style3">
                       
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Management" CssClass="auto-style2" Height="41px" Width="166px" />
                    </td>
                </tr>
            </table>	
        </footer>
    </div>
    <a class="back-to-top">Volver Arriba</a>

    <script src="js/script.js"></script>

    <!--   JQUERY  -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


    
    <!-------  Volver Arriba ------>
    <script>
        $(document).ready(function(){
        
            $('.back-to-top').click(function(){
                $('body, html').animate({
                    scrollTop: '0px'
                }, 300);
            });
        
            $(window).scroll(function(){
                if( $(this).scrollTop() > 0 ){
                    $('.back-to-top').slideDown(300);
                } else {
                    $('.back-to-top').slideUp(300);
                }
            });
        });
    </script>

        <div>
        </div>
    </form>
</body>
</html>
