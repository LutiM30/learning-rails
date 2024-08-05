class HomeController < ApplicationController
  def index
    # render plain: "Hello World! Rails is working!"
    message = '<h1>Hello World! Rails is working!</h1>'
    message += '<h2>Hello World! Rails is working!</h2>'
    message += '<h3>Hello World! Rails is working!</h3>'
    message += '<h4>Hello World! Rails is working!</h4>'
    message += '<h5>Hello World! Rails is working!</h5>'

    render html: message.html_safe
  end

  def getquerystringvalues
    message = ''
    message += if params[:name]
                 '<h1> Hello : ' + params[:name] + '</h1>'
               else
                 "<h1>You haven't supplied any name yet</h1>"
               end

    message += if params[:country]
                 '<h1> You are from : ' + params[:country] + '</h1>'
               else
                 "<h1>You haven't supplied any country yet</h1>"
               end

    message += '<h1> Controller Name : ' + params[:controller] + '</h1>'
    message += '<h1> Action Name : ' + params[:action] + '</h1>'
    render html: message.html_safe
  end

  def passdatatoviews
    @message = '<h1>Hello World! Rails is working!</h1>'
    @message += '<h2>Hello World! Rails is working!</h2>'
    @message += '<h3>Hello World! Rails is working!</h3>'
    @message += '<h4>Hello World! Rails is working!</h4>'
    @message += '<h5>Hello World! Rails is working!</h5>'
  end

  def showdatetime
    @current_time = DateTime.now
  end

  def conditionalrendering
    @data = {
      name: 'Mitul Mistry',
      age: '24',
      country: 'CANADA',
      is_visible: true,
      logged_in: false,
      work_experince: 6,
      state: 'Ontario',
      spouse: 'Sheila'
    }
  end

  def loopthrougharrays
    @Products = []
    console
    fnum = 10
    snum = 5
    addition = fnum + snum
    sub = fnum - snum
    multi = fnum * snum
    div = fnum / 2

    @Products.push({ productID: 1, productName: 'AMD Ryzen 3990', quantity: 100, unitsInStock: 50,
                     disContinued: false, cost: 3000 })

    @Products.push({ productID: 2, productName: 'AMD Ryzen 3980', quantity: 100, unitsInStock: 50,
                     disContinued: false, cost: 4000 })

    @Products.push({ productID: 3, productName: 'AMD Ryzen 3970', quantity: 100, unitsInStock: 50,
                     disContinued: false, cost: 5000 })

    @Products.push({ productID: 4, productName: 'AMD Ryzen 3960', quantity: 100, unitsInStock: 50,
                     disContinued: false, cost: 6000 })

    @Products.push({ productID: 5, productName: 'AMD Ryzen 3950', quantity: 100, unitsInStock: 50,
                     disContinued: false, cost: 7000 })

    @Products.push({ productID: 6, productName: 'AMD Ryzen 3940', quantity: 100, unitsInStock: 50,
                     disContinued: true, cost: 8000 })

    @Products.push({ productID: 7, productName: 'AMD Ryzen 3930', quantity: 100, unitsInStock: 50,
                     disContinued: true, cost: 9000 })
    @Products.push({ productID: 8, productName: 'amd Ryzen 3920', quantity: 100, unitsInStock: 50,
                     disContinued: true, cost: 10_000 })
  end
end
