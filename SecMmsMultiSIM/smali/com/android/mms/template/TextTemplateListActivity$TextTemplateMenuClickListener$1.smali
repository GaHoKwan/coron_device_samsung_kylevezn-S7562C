.class Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 445
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$600(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v2, v2, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I
    invoke-static {v2}, Lcom/android/mms/template/TextTemplateListActivity;->access$500(Lcom/android/mms/template/TextTemplateListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/template/TextTemplateProvider;->deleteTemplate(Landroid/database/Cursor;I)I

    .line 447
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v1, v1, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const v2, 0x7f0a0389

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 449
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->setMode(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/mms/template/TextTemplateListActivity;->access$700(Lcom/android/mms/template/TextTemplateListActivity;IZ)V

    .line 450
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener$1;->this$1:Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/template/TextTemplateListActivity$TextTemplateMenuClickListener;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #calls: Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListActivity;->access$800(Lcom/android/mms/template/TextTemplateListActivity;)V

    .line 451
    return-void
.end method
