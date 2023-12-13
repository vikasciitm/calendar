require 'date'
require 'colorize'
class Calendar
    def calenda_val(year,month)
        first_date=Date.new(year,month,1)
        last_date=Date.new(year,month,-1)
        puts ""
        puts "--------------------------------".center(100).green
        puts "#{Date::MONTHNAMES[month]}-#{year}".center(100).yellow
        puts "--------------------------------".center(100).green
        print "Su".rjust(5).red,"Mo".rjust(5),"Tu".rjust(5),"We".rjust(5),"Th".rjust(5),"Fr".rjust(5),"Sa\n".rjust(5)
        for day in first_date..last_date
            if day.day==1

                #one time

                if day.strftime("%A")=="Sunday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).red
                    end
                elsif day.strftime("%A")=="Monday"
                    if day==Date.today
                        print day.day.to_s.rjust(10).green
                    else
                        print day.day.to_s.rjust(10).blue
                    end
                elsif day.strftime("%A")=="Tuesday"
                    if day==Date.today
                        print day.day.to_s.rjust(15).green
                    else
                        print day.day.to_s.rjust(15).blue
                    end
                elsif day.strftime("%A")=="Wednesday"
                    if day==Date.today
                        print day.day.to_s.rjust(20).green
                    else
                        print day.day.to_s.rjust(20).blue
                    end
                elsif day.strftime("%A")=="Thursday"
                    if day==Date.today
                        print day.day.to_s.rjust(25).green
                    else
                        print day.day.to_s.rjust(25).blue
                    end
                elsif day.strftime("%A")=="Friday"
                    if day==Date.today
                        print day.day.to_s.rjust(30).green
                    else
                        print day.day.to_s.rjust(30).blue
                    end
                elsif day.strftime("%A")=="Saturday"
                    if day==Date.today
                        print day.day.to_s.rjust(35).green
                    else
                        print day.day.to_s.rjust(35).blue
                    end
                end
                if day.saturday?
                    puts
                end

                #all time


            else
                if day.strftime("%A")=="Sunday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).red
                    end
                elsif day.strftime("%A")=="Monday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                elsif day.strftime("%A")=="Tuesday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                elsif day.strftime("%A")=="Wednesday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                elsif day.strftime("%A")=="Thursday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                elsif day.strftime("%A")=="Friday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                elsif day.strftime("%A")=="Saturday"
                    if day==Date.today
                        print day.day.to_s.rjust(5).green
                    else
                        print day.day.to_s.rjust(5).blue
                    end
                end
                if day.saturday?
                    puts
                end
            end
        end
    end
end
date_val=Date.today
obj1=Calendar.new
obj1.calenda_val(date_val.year,date_val.month)
mon=date_val.month
yea=date_val.year
while true
    print "\nGo back a month:1\nGo forward a month:2\ncurrent month:3\nGo all month current year:4\nexit:0\nEnter the number of your choice:"
    n=gets.to_i
    case n
    when 1
        if 0<mon
            mon-=1
            if mon!=0
                obj1.calenda_val(yea,mon)
            end
            print "\n",mon
        end
        if mon==0
            mon=12
            yea-=1
            obj1.calenda_val(yea,date_val.month)
        end
    when 2
        if mon<13
            mon+=1
            if mon!=13
                obj1.calenda_val(yea,mon)
            end
        end
        if mon==13
            mon=1
            yea+=1
            obj1.calenda_val(yea,mon)
        end
    when 3
        obj1.calenda_val(date_val.year,date_val.month)
        mon=date_val.month
        yea=date_val.year
    when 4
        mon=1
        while mon<13
            obj1.calenda_val(yea,mon)
            mon+=1
        end
    when 0
        break
    else
        puts "your cho wrong ?".red
    end
end
