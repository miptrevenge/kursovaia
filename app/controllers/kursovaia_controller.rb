class KursovaiaController < ApplicationController
   
    def autorize
      @user = Student.find_by Login: params[:login]
        $foo = @user
        if ($foo != nil) and ($foo.Password == params[:password])
          redirect_to view_path
        else
          redirect_to input_path
          $errorlogin = "#{ I18n.t('.error')}"
        end
    end

    def input

    end

    def view
      
      $errorlogin = ""

      @array = []

      @students = Student.all
      
      @subjects = Subject.all

      @subjects.each do |subject|
        if ($foo.id == subject.student_id)
          @array.push(subject.Evaluation)
        end

      end

      return @array

    end
  
    def naprava
      
      $foo.update(Key:1) 
      @students = Student.all
      @subjects = Subject.all
    end

    def otchet
      @students = Student.all
      
      @subjects = Subject.all
    end

    def spravka
      @students = Student.all
      
      @subjects = Subject.all 
    end

  end