.class public abstract Ljava/text/spi/DecimalFormatSymbolsProvider;
.super Ljava/util/spi/LocaleServiceProvider;
.source "DecimalFormatSymbolsProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/spi/LocaleServiceProvider;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;
.end method