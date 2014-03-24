using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class PDEFormClass:ConnectionClass1
{
    #region "All Field"

    private int  _formid, _teamid;
    private string _titleofinvention, _teamleadername, _teamleaderaddress, _teamleadermobileno, _teamleaderemailid, _abstract, _descriptionfieldofinvention, _descriptionbackground, _descriptionsummary, _descriptionobjects, _descriptiondrawings, _descriptionfulldetails, _descriptionexamples, _descriptionuniquefeatures;
    private char _declaration_9_3_1 , _declaration_9_3_2 , _declaration_9_3_3 , _declaration_9_3_4 , _declaration_10_1, _declaration_10_2, _declaration_10_3, _declaration_10_4, _declaration_10_5, _declaration_10_6, _declaration_10_7;

    #endregion


    #region "All Properties"


    public int Form_Id
    {
        get
        {
            return _formid;
        }
        set
        {
            _formid = value;
        }
    }

    public int Team_Id
    {
        get
        {
            return _teamid;
        }
        set
        {
            _teamid = value;
        }
    }

    public string Title_Of_Invention
    {
        get
        {
            return _titleofinvention;
        }
        set
        {
            _titleofinvention = value;
        }
    }

    public string TeamLeader_Name
    {
        get
        {
            return _teamleadername;
        }
        set
        {
            _teamleadername = value;
        }
    }


    public string TeamLeader_Address
    {
        get
        {
            return _teamleaderaddress;
        }
        set
        {
            _teamleaderaddress = value;
        }
    }

    public string TeamLeader_MobileNo
    {
        get
        {
            return _teamleadermobileno;
        }
        set
        {
            _teamleadermobileno = value;
        }
    }

    public string TeamLeader_EmailId
    {
        get
        {
            return _teamleaderemailid;
        }
        set
        {
            _teamleaderemailid = value;
        }
    }

    public char DeclarationNine_Three_One
    {
        get
        {
            return _declaration_9_3_1;
        }
        set
        {
            _declaration_9_3_1 = value;
        }
    }

    public char DeclarationNine_Three_Two
    {
        get
        {
            return _declaration_9_3_2;
        }
        set
        {
            _declaration_9_3_2 = value;
        }
    }

    public char DeclarationNine_Three_Three
    {
        get
        {
            return _declaration_9_3_3;
        }
        set
        {
            _declaration_9_3_3 = value;
        }
    }

    public char DeclarationNine_Three_Four
    {
        get
        {
            return _declaration_9_3_4;
        }
        set
        {
            _declaration_9_3_4 = value;
        }
    }

    public char DeclarationTen_One
    {
        get
        {
            return _declaration_10_1;
        }
        set
        {
            _declaration_10_1 = value;
        }
    }

    public char DeclarationTen_Two
    {
        get
        {
            return _declaration_10_2;
        }
        set
        {
            _declaration_10_2 = value;
        }
    }

    public char DeclarationTen_Three
    {
        get
        {
            return _declaration_10_3;
        }
        set
        {
            _declaration_10_3 = value;
        }
    }

    public char DeclarationTen_Four
    {
        get
        {
            return _declaration_10_4;
        }
        set
        {
            _declaration_10_4 = value;
        }
    }

    public char DeclarationTen_Five
    {
        get
        {
            return _declaration_10_5;
        }
        set
        {
            _declaration_10_5 = value;
        }
    }

    public char DeclarationTen_Six
    {
        get
        {
            return _declaration_10_6;
        }
        set
        {
            _declaration_10_6 = value;
        }
    }

    public char DeclarationTen_Seven
    {
        get
        {
            return _declaration_10_7;
        }
        set
        {
            _declaration_10_7 = value;
        }
    }

    public string Description_FieldOfInvention
    {
        get
        {
            return _descriptionfieldofinvention;
        }
        set
        {
            _descriptionfieldofinvention = value;
        }
    }

    public string Description_Background
    {
        get
        {
            return _descriptionbackground;
        }
        set
        {
            _descriptionbackground = value;
        }
    }

    public string Description_Summary
    {
        get
        {
            return _descriptionsummary;
        }
        set
        {
            _descriptionsummary = value;
        }
    }

    public string Description_Objects
    {
        get
        {
            return _descriptionobjects;
        }
        set
        {
            _descriptionobjects = value;
        }
    }

    public string Description_Drawings
    {
        get
        {
            return _descriptiondrawings;
        }
        set
        {
            _descriptiondrawings = value;
        }
    }

    public string Description_Fulldetails
    {
        get
        {
            return _descriptionfulldetails;
        }
        set
        {
            _descriptionfulldetails = value;
        }
    }

    public string Description_Examples
    {
        get
        {
            return _descriptionexamples;
        }
        set
        {
            _descriptionexamples = value;
        }
    }

    public string Description_Uniquefeatures
    {
        get
        {
            return _descriptionuniquefeatures;
        }
        set
        {
            _descriptionuniquefeatures = value;
        }
    }
    #endregion


}