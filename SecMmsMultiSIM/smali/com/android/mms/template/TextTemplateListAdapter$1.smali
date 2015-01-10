.class Lcom/android/mms/template/TextTemplateListAdapter$1;
.super Ljava/lang/Object;
.source "TextTemplateListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/template/TextTemplateListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/template/TextTemplateListAdapter;

.field final synthetic val$mCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListAdapter;Landroid/widget/CheckBox;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    iput-object p2, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->val$mCheckBox:Landroid/widget/CheckBox;

    iput p3, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    const-string v1, "Mms/TextTemplateListAdapter"

    const-string v2, "setOnClickListener"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->access$000(Lcom/android/mms/template/TextTemplateListAdapter;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->val$mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 87
    .local v0, checked:Z
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->val$mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 93
    .end local v0           #checked:Z
    :cond_0
    :goto_1
    return-void

    .line 87
    .restart local v0       #checked:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 88
    .end local v0           #checked:Z
    :cond_2
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mMode:I
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->access$000(Lcom/android/mms/template/TextTemplateListAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->access$100(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v1, v1, Lcom/android/mms/template/TextTemplateListActivity;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->access$100(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/mms/template/TextTemplateListActivity;

    iget v2, p0, Lcom/android/mms/template/TextTemplateListAdapter$1;->val$pos:I

    invoke-virtual {v1, v2}, Lcom/android/mms/template/TextTemplateListActivity;->onListItemClick(I)V

    goto :goto_1
.end method
