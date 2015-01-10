.class Lcom/android/mms/ui/MessageOptions$CreationOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreationOkListener"
.end annotation


# instance fields
.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "sendReq"
    .parameter "subject"

    .prologue
    .line 1963
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1964
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1965
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1966
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    .line 1967
    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "sendReq"
    .parameter "subject"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/SendReq;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1969
    .local p4, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    .line 1971
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1972
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    .line 1973
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mNumList:Ljava/util/ArrayList;

    .line 1974
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1953
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    move v6, v2

    #calls: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    .line 1961
    :goto_0
    return-void

    .line 1957
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    #calls: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto :goto_0
.end method
