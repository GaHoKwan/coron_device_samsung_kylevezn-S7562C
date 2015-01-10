.class Lcom/android/mms/template/TextTemplateListAdapter$2;
.super Ljava/lang/Object;
.source "TextTemplateListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/template/TextTemplateListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListAdapter$2;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter$2;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->access$100(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/template/TextTemplateListActivity;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListAdapter$2;->this$0:Lcom/android/mms/template/TextTemplateListAdapter;

    #getter for: Lcom/android/mms/template/TextTemplateListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->access$100(Lcom/android/mms/template/TextTemplateListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/template/TextTemplateListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/template/TextTemplateListActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 105
    :cond_0
    return-void
.end method
