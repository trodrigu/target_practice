class EmailPermutator
  include ActiveRecord::Validations

  CURRENT_CADENCES = Cadence.all

  def initialize(params)
    @email = params[:email]
    @first_name = params[:first_name].downcase
    @fi = @first_name.first.downcase
    @last_name = params[:last_name].downcase
    @middle_name = params[:middle_name]
    @business = params[:business].downcase
    @domain = domain

    if @middle_name
      @mi = @middle_name.first
    else
      @mi = @first_name.first
    end
    @ln = @last_name.first
    @business = params[:business]
  end

  def create_target
    #TODO: collect all valids not just return first!
    CURRENT_CADENCES.each do |c|
      @email = eval('"' + c.permutation + '"') + @domain
      target_params = {
        first_name: @first_name,
        last_name: @last_name,
        business: @business,
        domain: @domain
      }
      target = Target.new(target_params)
      target.emails << Email.new(email: @email.downcase)
      if target.valid?
        target.save
        return target
      else
        @email = nil
      end
    end
  end
  
  def domain
    #TODO: deal will non .com's
    "@#{@business}.com"
  end
end

