.class Lcom/android/phone/DsaPhoneNumber$1;
.super Ljava/lang/Object;
.source "DsaPhoneNumber.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DsaPhoneNumber;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DsaPhoneNumber;


# direct methods
.method constructor <init>(Lcom/android/phone/DsaPhoneNumber;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "vv"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber$1;->this$0:Lcom/android/phone/DsaPhoneNumber;

    invoke-virtual {v0, p1}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun1(Landroid/view/View;)V

    .line 141
    return-void
.end method