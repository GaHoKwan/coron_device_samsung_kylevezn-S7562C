.class Lcom/android/mms/data/WorkingMessage$2;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$priorityLevel:I

.field final synthetic val$sendReq:Lcom/google/android/mms/pdu/SendReq;

.field final synthetic val$sendSimSlot:I

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2139
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-object p6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iput p7, p0, Lcom/android/mms/data/WorkingMessage$2;->val$priorityLevel:I

    iput p8, p0, Lcom/android/mms/data/WorkingMessage$2;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 2144
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$2;->val$sendReq:Lcom/google/android/mms/pdu/SendReq;

    iget v6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$priorityLevel:I

    iget v7, p0, Lcom/android/mms/data/WorkingMessage$2;->val$sendSimSlot:I

    #calls: Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;II)V
    invoke-static/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;II)V

    .line 2147
    return-void
.end method
