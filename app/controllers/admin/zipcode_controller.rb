class Admin::ZipcodeController < InheritedResources::Base

  def find
    zip_code_searcher = ZipcodeSearcher.new(params_zip_code)

    if zip_code_searcher.valid?
      render json: zip_code_searcher.get_address
    else
      render json: {}
    end
  end

  private

  def params_zip_code
    params.permit(:zip_code)[:zip_code]
  end

end