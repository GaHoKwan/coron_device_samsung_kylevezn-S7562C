.class Lcom/android/mms/ui/BoxListFrame$20;
.super Ljava/lang/Object;
.source "BoxListFrame.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BoxListFrame;->showSelectBoxDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BoxListFrame;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BoxListFrame;)V
    .locals 0
    .parameter

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3133
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    #getter for: Lcom/android/mms/ui/BoxListFrame;->mSelectorAdapter:Lcom/android/mms/ui/SelectBoxTypeAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4600(Lcom/android/mms/ui/BoxListFrame;)Lcom/android/mms/ui/SelectBoxTypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/SelectBoxTypeAdapter;->buttonToCommand(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/BoxListFrame;->access$4502(I)I

    .line 3134
    iget-object v0, p0, Lcom/android/mms/ui/BoxListFrame$20;->this$0:Lcom/android/mms/ui/BoxListFrame;

    invoke-static {}, Lcom/android/mms/ui/BoxListFrame;->access$4500()I

    move-result v1

    #calls: Lcom/android/mms/ui/BoxListFrame;->updateList(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/BoxListFrame;->access$4700(Lcom/android/mms/ui/BoxListFrame;I)V

    .line 3135
    return-void
.end method
