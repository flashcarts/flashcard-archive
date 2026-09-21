
#ifndef extlink_filestruct_h
#define extlink_filestruct_h

// extlink.dat structure

typedef u16 UnicodeChar;

#define ExtLinkBody_MaxLength (256)

#define ExtLinkBody_ID (0x30545845) // EXT0

typedef struct {
  u32 ID,dummy1,dummy2,dummy3; // dummy is ZERO.
  char DataFullPathFilenameAlias[ExtLinkBody_MaxLength];
  char DataPathAlias[ExtLinkBody_MaxLength];
  char DataFilenameAlias[ExtLinkBody_MaxLength];
  char NDSFullPathFilenameAlias[ExtLinkBody_MaxLength];
  char NDSPathAlias[ExtLinkBody_MaxLength];
  char NDSFilenameAlias[ExtLinkBody_MaxLength];
  UnicodeChar DataFullPathFilenameUnicode[ExtLinkBody_MaxLength];
  UnicodeChar DataPathUnicode[ExtLinkBody_MaxLength];
  UnicodeChar DataFilenameUnicode[ExtLinkBody_MaxLength];
  UnicodeChar NDSFullPathFilenameUnicode[ExtLinkBody_MaxLength];
  UnicodeChar NDSPathUnicode[ExtLinkBody_MaxLength];
  UnicodeChar NDSFilenameUnicode[ExtLinkBody_MaxLength];
} TExtLinkBody;


static bool GetFileBody_From_MoonShell2_ExtLink(const char **res_pFullPathFilenameAlias,void **res_pfilebuf,u32 *res_filesize)
{
  *res_pFullPathFilenameAlias=NULL;
  *res_pfilebuf=NULL;
  *res_filesize=0;
  
/*
  consolePrintf("Start disk driver.\n");
  if(FAT_InitFiles()==false){
    consolePrintf("DLDI init error.\n");
    return(false);
  }
*/
  
  static char FullAlias[ExtLinkBody_MaxLength];
  
  {
    const char *pfn="/moonshl2/extlink.dat"; // This full path file name is fixation. It is never moved.
    
    FILE *pf=FAT_fopen(pfn,"r");
    if(pf==NULL){
      consolePrintf("Extend link data file not found. [%s]\n",pfn);
      return(false);
    }
    
    u32 ID,IDSize;
    IDSize=FAT_fread(&ID,1,4,pf);
    
    if((IDSize==0)||(ID==0)){
      consolePrintf("Please call this application from MoonShell2 by way of the extend link. [%s]\n",pfn);
      FAT_fclose(pf); pf=NULL;
      return(false);
    }
    if(ExtLinkBody_ID!=ID){
      consolePrintf("Extend link ID error. (0x%08x!=0x%08x)\n",ExtLinkBody_ID,ID);
      FAT_fclose(pf); pf=NULL;
      return(false);
    }
    
    u32 Dummy[3];
    FAT_fread(Dummy,1,4*3,pf);
    
    FAT_fread(FullAlias,1,ExtLinkBody_MaxLength,pf);
    
    FAT_fclose(pf); pf=NULL;
  }
  
  u8 *pfilebuf=NULL;
  u32 filesize=0;
  
  {
    const char *pfn=FullAlias;
    
    FILE *pf=FAT_fopen(pfn,"r");
    if(pf==NULL){
      consolePrintf("File not found. [%s]\n",pfn);
      return(false);
    }
    
    FAT_fseek(pf,0,SEEK_END);
    filesize=FAT_ftell(pf);
    FAT_fseek(pf,0,SEEK_SET);
    
    pfilebuf=malloc(filesize);
    if(pfilebuf==NULL){
      consolePrintf("Memory overflow. [%s] %dbyte.\n",pfn,filesize);
      FAT_fclose(pf); pf=NULL;
      return(false);
    }
    
    if(FAT_fread(pfilebuf,1,filesize,pf)!=filesize){
      consolePrintf("File read error. [%s] %dbyte.\n",pfn,filesize);
      FAT_fclose(pf); pf=NULL;
      return(false);
    }
    
    FAT_fclose(pf); pf=NULL;
  }
  
  *res_pFullPathFilenameAlias=FullAlias;
  *res_pfilebuf=pfilebuf;
  *res_filesize=filesize;
  
  return(true);
}

#endif
