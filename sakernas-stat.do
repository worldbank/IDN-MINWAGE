

* income for business owners
    table (r13c) () if inlist(worktype,1,2,3) [w=int(weight)], stat(mean income) stat(median income)

* add work sector identifier
    g work_sector = .
        replace work_sector = 0 if !missing(r20)
        replace work_sector = 1 if (inlist(r20,1,2,3) | (inlist(r20,4,6,7) & r21==1))
        replace work_sector = 2 if (inlist(r20,4,6,7) & r21!=1) 
        replace work_sector = 3 if (r20==5)