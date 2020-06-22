foreach($connector in $relay){
                    (get-receiveconnector -identity "$connector").remoteipranges | select lowerbound,upperbound | %{
                       # write-host $_.lowerbound $_.upperbound
                        $script:highrelayipvalues += $_.lowerbound.tostring().trim()
                    }
