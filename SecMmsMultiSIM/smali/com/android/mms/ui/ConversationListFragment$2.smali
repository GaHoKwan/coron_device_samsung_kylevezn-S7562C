.class Lcom/android/mms/ui/ConversationListFragment$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$2;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "event"

    .prologue
    .line 396
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 397
    .local v1, action:I
    const/4 v5, 0x0

    .line 399
    .local v5, result:Z
    packed-switch v1, :pswitch_data_0

    .line 431
    const-string v6, "DragDrop"

    const-string v7, "Unknown action type received by OnDragListener."

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return v5

    .line 404
    :pswitch_0
    const/4 v5, 0x1

    .line 405
    goto :goto_0

    .line 408
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 410
    .local v2, clipData:Landroid/content/ClipData;
    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 412
    .local v0, ClipLabel:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 413
    const-string v6, "cropUri"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 414
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 415
    .local v3, item:Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 416
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 418
    .local v4, mCropUri:Landroid/net/Uri;
    const/4 v6, 0x0

    invoke-static {v6, v4}, Lcom/android/mms/ui/MessageUtils;->openComposerWithCropedImage(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 419
    const/4 v5, 0x1

    goto :goto_0

    .line 427
    .end local v0           #ClipLabel:Ljava/lang/CharSequence;
    .end local v2           #clipData:Landroid/content/ClipData;
    .end local v3           #item:Landroid/content/ClipData$Item;
    .end local v4           #mCropUri:Landroid/net/Uri;
    :pswitch_2
    const/4 v5, 0x1

    .line 428
    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
