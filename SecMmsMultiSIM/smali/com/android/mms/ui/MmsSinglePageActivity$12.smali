.class Lcom/android/mms/ui/MmsSinglePageActivity$12;
.super Ljava/lang/Object;
.source "MmsSinglePageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsSinglePageActivity;->addAudioInfo(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;Lcom/android/mms/model/AudioModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private audioModel:Lcom/android/mms/model/AudioModel;

.field final synthetic this$0:Lcom/android/mms/ui/MmsSinglePageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsSinglePageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$12;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2177
    sget-object v0, Lcom/android/mms/ui/MmsSinglePageActivity;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    iput-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$12;->audioModel:Lcom/android/mms/model/AudioModel;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/mms/ui/MmsSinglePageActivity$12;->this$0:Lcom/android/mms/ui/MmsSinglePageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MmsSinglePageActivity$12;->audioModel:Lcom/android/mms/model/AudioModel;

    #calls: Lcom/android/mms/ui/MmsSinglePageActivity;->saveAttachFile(Lcom/android/mms/model/MediaModel;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MmsSinglePageActivity;->access$600(Lcom/android/mms/ui/MmsSinglePageActivity;Lcom/android/mms/model/MediaModel;)V

    .line 2181
    return-void
.end method
