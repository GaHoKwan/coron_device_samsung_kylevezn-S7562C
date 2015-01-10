.class Lcom/android/mms/template/TextTemplateListActivity$1;
.super Ljava/lang/Object;
.source "TextTemplateListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 134
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 135
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    :goto_1
    return-void

    .line 134
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity$1;->this$0:Lcom/android/mms/template/TextTemplateListActivity;

    #getter for: Lcom/android/mms/template/TextTemplateListActivity;->allCheckBox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListActivity;->access$000(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    const-string v2, "unchecked"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
