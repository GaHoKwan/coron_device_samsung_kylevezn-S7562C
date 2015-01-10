.class Lcom/android/phone/DsaSelectSimCard$2;
.super Ljava/lang/Object;
.source "DsaSelectSimCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaSelectSimCard;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaSelectSimCard;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaSelectSimCard;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/phone/DsaSelectSimCard$2;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "vv"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard$2;->this$0:Lcom/android/phone/DsaSelectSimCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun2(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard$2;->this$0:Lcom/android/phone/DsaSelectSimCard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 178
    return-void
.end method
