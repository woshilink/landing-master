<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;


class Odds extends Model{


    protected $BranchId;
    protected $EventType;
    protected $OddsStyle;
    protected $feedType = [
        "all" => [
            "name"=> "all",
            "file" =>[
                "fluxcotes-decimal" => "https://partner.netbetsport.fr/xmlreports/fluxcotes.xml",
                "fractional" => "https://go.livepartners.com/liveodds/xmlfeed/uk_live_live-odd-new_src_live_odds.xml",
            ]
        ],
        "soccer" => [
            "name"=> "soccer",
            "file" =>[
                "decimal" => "https://go.livepartners.com/liveodds/xmlfeed/xml_sbtech_football.xml",
                "fractional" => "https://go.livepartners.com/liveodds/xmlfeed/uk_live_live-odd-new_src_live_odds.xml",
            ],
            "id" => 1
        ],
        "tennis" => [
            "name"=> "tennis",
            "file" => [

                "decimal" => "https://go.livepartners.com/liveodds/xmlfeed/uk_sport_tennis-odds_src_live_odds.xml",
                "fractional" => "https://go.livepartners.com/liveodds/xmlfeed/tennis-odds_Fractional_all.xml",
            ],
            "id" => 6
        ],
        "Horse" => [
            "name"=> "Horse",
            "file" => "https://go.livepartners.com/liveodds/xmlfeed/xml_sbtech_horse.xml",
            "id" => 61
        ]
    ];

    public function __construct($BranchId = 0, $EventType = 0, $OddsStyle = 'DECIMAL')
    {
        $this->BranchId = $BranchId;
        $this->EventType = $EventType;
        $this->OddsStyle = $OddsStyle;
    }
    public function getFeeds(){
        return 'https://go.livepartners.com/liveodds/xmlfeed/xml_sbtech_all.xml';
    }

    /**
     * @param $type
     * @return \Illuminate\Http\JsonResponse
     */
    public function getFeedsTypeJSON($type, $oddsStyle){
        $content = file_get_contents($this->feedType[$type]['file'][$oddsStyle]);
        $xml = simplexml_load_string($content);

        return response()->json($xml,200);
    }
    public function getBranchId(){
        return $this->BranchId;
    }

    public function geteventType(){
        return $this->EventType;
    }

    public function getOddsStyle(){
        return $this->OddsStyle;
    }
    public function getSportType(){
        return $this->sportType;
    }
    public function getSportTypeFile($sportType){
        return $this->sportType[$sportType]['file'];
    }

    public function getXmlUrl(){
        // FIXME:0 Make $url display notthing when empty
        $BranchIdText = "&BranchID=".$this->BranchId;
        $EventTypeText = "&EventType=".$this->EventType;
        $OddsStyleText = "&OddsStyle=".$this->OddsStyle;

        $url="http://netbetxml.sbtech.com/lines.aspx?".$BranchIdText.$EventTypeText.$OddsStyleText;
        return $url;
    }

    public function getXmlObject($xml){
        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => $xml
        , CURLOPT_HEADER => 0
        , CURLOPT_RETURNTRANSFER => 1
        , CURLOPT_ENCODING => 'gzip'
        ));
        $xmlExec = curl_exec($ch);

        curl_close($ch);
        return $xmlExec;
    }

    public function getXmlFile($url, $out_file){
        $ch = curl_init();
        curl_setopt_array($ch, array(
            CURLOPT_URL => $url
        , CURLOPT_HEADER => 0
        , CURLOPT_RETURNTRANSFER => 1
        , CURLOPT_ENCODING => 'gzip'
        ));
        $xml = curl_exec($ch);

        curl_close($ch);

        //$content = new SimpleXMLElement($xml);
        $content = $xml;

        ob_start();
        print_r($content );
        $output = ob_get_clean();

        $fWrite = fopen($out_file,"w+");
        $wrote = fwrite($fWrite, $output);
        return 0;
    }

    public function getAllOdds(){
        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => 'https://go.livepartners.com/liveodds/xmlfeed/xml_sbtech_all.xml'
        , CURLOPT_HEADER => 0
        , CURLOPT_RETURNTRANSFER => 1
        , CURLOPT_ENCODING => 'gzip'
        ));
        $xmlExec = curl_exec($ch);

        curl_close($ch);
        return $xmlExec;
    }

}