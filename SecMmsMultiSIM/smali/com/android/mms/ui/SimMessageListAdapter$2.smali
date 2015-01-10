.class Lcom/android/mms/ui/SimMessageListAdapter$2;
.super Ljava/lang/Object;
.source "SimMessageListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/lang/String;ZI)V
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
    .line 171
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter$2;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 195
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 174
    packed-switch p2, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$2;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->access$002(Lcom/android/mms/ui/SimMessageListAdapter;Z)Z

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$2;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #setter for: Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->access$002(Lcom/android/mms/ui/SimMessageListAdapter;Z)Z

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter$2;->this$0:Lcom/android/mms/ui/SimMessageListAdapter;

    #setter for: Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SimMessageListAdapter;->access$002(Lcom/android/mms/ui/SimMessageListAdapter;Z)Z

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
