.class Lcom/android/phone/InCallScreen$18;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 5158
    iput-object p1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 5160
    iget-object v1, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v0, p0, Lcom/android/phone/InCallScreen$18;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/InCallScreen;->access$4000(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/phone/InCallScreen;->access$4100(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 5161
    return-void
.end method
