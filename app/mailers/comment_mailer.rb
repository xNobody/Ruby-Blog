class CommentMailer < ApplicationMailer
    def new_comment_email
        @comment = params[:comment]
        mail(to: "Catalin.Lutescu@theaccessgroup.com", subject: "comment form #{@comment.commenter}")
    end
end