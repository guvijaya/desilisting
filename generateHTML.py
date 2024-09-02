import csv
import json

# Specify the CSV file name
filename = 'database.csv'

# csv having encoding issue. hadling emoji here.
def getEmoji(category):
    emojiStr = category.lower()    
    if emojiStr.find("jewelleries") >= 0: emoji = "💍" 
    elif emojiStr.find("clothing") >= 0 : emoji = "👗"  
    elif emojiStr.find("communities") >= 0 : emoji = "🇮🇳" 
    elif emojiStr.find("devotional") >= 0 :  emoji = "📿" 
    elif emojiStr.find("restaurants") >= 0 : emoji = "😋" 
    elif emojiStr.find("groceries") >= 0 : emoji = "🛒" 
    elif emojiStr.find("other") >= 0 : emoji = "💸" 
    elif emojiStr.find("language") >= 0 : emoji = "🏫" 
    elif emojiStr.find("ngo") >= 0 : emoji = "🫶🏿" 
    elif emojiStr.find("yoga") >= 0 : emoji = "🧘🏿"
    elif emojiStr.find("temple") >= 0 : emoji = "🛕" 
    elif emojiStr.find("caters") >= 0 : emoji = "🍜"    
    elif emojiStr.find("dance") >= 0 : emoji = "💃"
    elif emojiStr.find("music") >=0 : emoji = "🎶"
    elif emojiStr.find("drama") >=0 : emoji = "🎭"
    elif emojiStr.find("literature") >=0 : emoji = "📚"
    elif emojiStr.find("drawing") >=0 : emoji = "🎨"
    else: emoji = ''

    return emoji

htmlTemplate = '''
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>Seattle Desi Listing</title>    
    <link rel='stylesheet' href='styles.css'>
</head>
<body>
    <header>
        <h1>Seattle Desi Directory</h1>
        <p>Your guide to finding Indian-focused businesses and services in Seattle area</p>
        <p style='font-size:12px;'><a href='https://buymeacoffee.com/gurukpm'>Buy a coffee! Share feedback</p>
    </header>
    
    <div class='container'>
        <div class='sidebar'>
            <ul>                
                {{header}}
            </ul>
        </div>
        <div class='content'>
            <h2><span id='secTitle'></span></h2>
            {{details}}
        </div>
        </div>
    </div>
    <script src="script.js"></script>
    </body>
    </html>
'''    

# Open the file using the open() function
with open(filename, mode='r', encoding="utf-8") as file:
    # Create a CSV reader object
    csv_reader = csv.reader(file)
    
    # Get the header from the first row
    header = next(csv_reader)
    
    rows = list(csv_reader)

    PrevCategory = ''
    detailHtml = ''
    categoryHtml = ''
    
    for row in rows:
        #Category,Location,Title,Web,Facebook,Instagram,Youtube,Zomato,X,Bing,,
        Category = row[0]
        Location = row[1]
        Title = row[2]        
        Facebook = Insta = YouTube = X = Bing = Zomato = Web =''
        for i in range(3, len(row)):
            url = row[i].strip().lower()            

            if url == '': continue
            elif 'facebook.com' in url: Facebook = f", <a href='{url}'>Facebook</a>"
            elif 'youtube.com' in url: YouTube   = f", <a href='{url}'>YouTube</a>"
            elif 'instagram.com' in url: Insta   = f", <a href='{url}'>Instagram</a>"
            elif 'x.com' in url: X = f", <a href='{url}'>X</a>"
            elif 'bing.com' in url: Bing = f", <a href='{url}'>Bing</a>"
            elif 'zomato.com' in url: Zomato = f", <a href='{url}'>Zomato</a>"
            elif Web == '': Web = f", <a href='{url}'>Web</a>"
            else:                 
                raise Exception("Too many link")
        
        if(PrevCategory != Category):
            detailHtml = '' if detailHtml == '' else detailHtml + '\n' + '</div>'
            CategoryId = Category.replace(' ','')
            detailHtml = detailHtml + '\n' + f"<div id='{CategoryId}' class='details'>"
            PrevCategory = Category            
            categoryHtml = categoryHtml + f"                <li><a href='#' class='summary' data-id='{CategoryId}'>{getEmoji(Category)} {Category} <span class='count'></span></a></li>\n"            
        detailHtml = detailHtml + '\n' + f"\t<p class='list-group-item'>{Title}{Web}{Facebook}{Insta}{YouTube}{X}{Bing}</p>"

html = htmlTemplate.replace("{{header}}",categoryHtml).replace("{{details}}", detailHtml)

with open('index.html', 'w', encoding="utf-8") as file:    
    file.write(html)