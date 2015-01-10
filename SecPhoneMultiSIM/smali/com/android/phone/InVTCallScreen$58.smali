.class Lcom/android/phone/InVTCallScreen$58;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 11932
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$58;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 11934
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$58;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11935
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$58;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17600(Lcom/android/phone/InVTCallScreen;)V

    .line 11938
    :goto_0
    return-void

    .line 11937
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$58;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$17700(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0
.end method
