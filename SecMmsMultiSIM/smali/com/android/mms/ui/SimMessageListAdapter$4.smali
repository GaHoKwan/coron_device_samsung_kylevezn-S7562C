.class Lcom/android/mms/ui/SimMessageListAdapter$4;
.super Ljava/lang/Object;
.source "SimMessageListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimMessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SimMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SimMessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter$4;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$4;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->access$200(Lcom/android/mms/ui/SimMessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ManageSimMessages;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$4;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #getter for: Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z
    invoke-static {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->access$000(Lcom/android/mms/ui/SimMessageListAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$4;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SimMessageListAdapter;->access$300(Lcom/android/mms/ui/SimMessageListAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/ManageSimMessages;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 274
    :cond_0
    return-void
.end method
