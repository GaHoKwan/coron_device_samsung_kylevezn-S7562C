.class Lcom/android/mms/spam/SpamMessageListAdapter$3;
.super Ljava/lang/Object;
.source "SpamMessageListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SpamMessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SpamMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SpamMessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter$3;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter$3;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$300(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/spam/ManageSpamMessages;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter$3;->this$0:Lcom/android/mms/spam/SpamMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/spam/SpamMessageListAdapter;->access$400(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/spam/ManageSpamMessages;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/spam/ManageSpamMessages;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 422
    :cond_0
    return-void
.end method
