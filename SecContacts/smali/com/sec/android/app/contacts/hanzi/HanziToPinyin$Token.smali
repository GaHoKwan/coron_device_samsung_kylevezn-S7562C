.class public Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/hanzi/HanziToPinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public source:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput p1, p0, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->type:I

    .line 330
    iput-object p2, p0, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 331
    iput-object p3, p0, Lcom/sec/android/app/contacts/hanzi/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 332
    return-void
.end method
