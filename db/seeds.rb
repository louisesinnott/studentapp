

graphic = Subject.create(name: 'Graphic Design', description: 'Design', ca_percent: '100', final_exam_percent: '0')
wsp = Subject.create(name: 'WebServer', description: 'Programming', ca_percent: '100', final_exam_percent: '0')
network = Subject.create(name: 'Networks', description: 'Networks', ca_percent: '50', final_exam_percent: '50')

    # Associate some tags with microposts
    Course.find(1).subjects << graphic
    Course.find(1).subjects << wsp
    Course.find(2).subjects << network
    
    