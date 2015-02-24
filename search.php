<html>
<body>

        <?php
        
        $searchTerm = $_POST["searchTerm"];
        $searchTerm = str_replace(' ', '+', $searchTerm);
        echo $searchTerm;
        $searchTerm = 'https://www.google.com/search?q='.$searchTerm.'&ie=utf-8&oe=utf-8';
        
        $pageResults = htmlentities(file_get_contents($searchTerm));
        $doc = new DOMDocument();
                @$doc->loadHTML(file_get_contents($searchTerm));

                $tags = $doc->getElementsByTagName('mnr-c');

        foreach ($tags as $tag) {
       echo $tag->gettext();
        foreach($pageResults->find("<b>") as $row) {
             echo $row;
        }
        
        ?>
</body>
</html> 