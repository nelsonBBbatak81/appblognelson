class Admin::TagsController < AdminController
    before_action :set_tag, only: %i[ destroy ]
    before_action :set_active_url

    def index
        @tags = Tag.all
    end

    # DELETE /tags/1 or /tags/1.json
    def destroy
        @tag.destroy

        respond_to do |format|
            format.html { redirect_to tags_url, notice: "Tags was successfully destroyed." }
            format.json { head :no_content }
        end
    end

    private
        def set_active_url
            @activetagadmin = 'active'
        end

        def set_tag
            @tag = Tag.find(params[:id])
        end
end