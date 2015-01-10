.class Lcom/android/mms/ui/MmsSinglePageActivity$8;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->setImageWithFrame(Ljava/lang/String;Lcom/android/mms/model/ImageModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private im:Lcom/android/mms/model/ImageModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticImageModel:Lcom/android/mms/model/ImageModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->im:Lcom/android/mms/model/ImageModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$8;->im:Lcom/android/mms/model/ImageModel;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$600(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V

    .line 1779
    return-void
.end method
